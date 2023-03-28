import {
  ModalForm,
  ProForm,
  ProFormCheckbox,
  ProFormRadio,
  ProFormText,
} from '@ant-design/pro-components';
import { Form } from 'antd';
import React, { useEffect } from 'react';

export type FormValueType = {
  authorizedGrantTypeCodes?: string[];
} & Partial<SYSTEM.App>;

export type UpdateFormProps = {
  onVisibleChange: (flag: boolean) => void;
  onSubmit: (values: FormValueType) => Promise<void>;
  visible: boolean;
  values?: SYSTEM.App;
};

const UpdateForm: React.FC<UpdateFormProps> = (props) => {
  const [form] = Form.useForm();
  const { values } = props;
  useEffect(() => {
    if (values?.authorizedGrantTypes) {
      const authorizedGrantTypeCodes = values.authorizedGrantTypes.split(",")
      const formData: FormValueType = { ...values, authorizedGrantTypeCodes };
      form.setFieldsValue(formData);
    }
  }, [form, values]);
  return (
    <ModalForm
      title="修改应用"
      form={form}
      visible={props.visible}
      onFinish={props.onSubmit}
      modalProps={{ destroyOnClose: true }}
      onVisibleChange={props.onVisibleChange}
      grid={true}
      rowProps={{ gutter: 8 }}
    >
      <ProForm.Group>
        <ProFormText
          readonly
          colProps={{ span: 12 }}
          width="md"
          name="clientId"
          label="应用标识"
        />
        <ProFormText
          width="md"
          colProps={{ span: 12 }}
          name="clientName"
          label="应用名称"
          placeholder="输入应用名称"
        />
        <ProFormText
          readonly
          width="md"
          colProps={{ span: 12 }}
          name="clientSecretStr"
          label="应用密钥"
        />
        <ProFormText
          width="md"
          colProps={{ span: 12 }}
          name="webServerRedirectUri"
          label="回调地址"
          placeholder="输入回调地址"
        />
        <ProFormRadio.Group
          name="autoapprove"
          label="自动审批"
          colProps={{ span: 6 }}
          width="lg"
          options={[
            {
              label: '是',
              value: 'true',
            },
            {
              label: '否',
              value: 'false',
            },
          ]}
        />
        <ProFormCheckbox.Group
          name="authorizedGrantTypeCodes"
          label="授权模式"
          width={'xl'}
          colProps={{ span: 18 }}
          options={[
            {
              label: '授权码模式',
              value: 'authorization_code',
            },
            {
              label: '密码模式',
              value: 'password',
            },
            {
              label: '客户端模式',
              value: 'client_credentials',
            },
            {
              label: '简化模式',
              value: 'implicit',
            },
            {
              label: '刷新Token',
              value: 'refresh_token',
            },
            {
              label: '密码验证码模式',
              value: 'password_code',
            },
            {
              label: 'openId模式',
              value: 'openId',
            },
            {
              label: '手机号密码模式',
              value: 'mobile_password',
            },
          ]}
        />
        <ProFormText
          rules={[
            {
              required: true,
              message: '令牌时效不为空',
            },
            {
              pattern: new RegExp(/^[1-9]\d*$/, 'g'),
              message: '令牌时效必须为整数',
            },
          ]}
          width="md"
          colProps={{ span: 12 }}
          name="accessTokenValiditySeconds"
          label="令牌时效(s)"
          placeholder="输入令牌时效"
          fieldProps={{suffix:'秒'}}
        />
        <ProFormText
          rules={[
            {
              required: true,
              message: '刷新时效不为空',
            },
            {
              pattern: new RegExp(/^[1-9]\d*$/, 'g'),
              message: '刷新时效必须为整数',
            },
          ]}
          width="md"
          colProps={{ span: 12 }}
          name="refreshTokenValiditySeconds"
          label="刷新时效(s)"
          placeholder="输入刷新时效"
          fieldProps={{suffix:'秒'}}
        />
        <ProFormRadio.Group
          name="supportIdToken"
          label="支持ID令牌"
          width="md"
          colProps={{ span: 12 }}
          options={[
            {
              label: '是',
              value: true,
            },
            {
              label: '否',
              value: false,
            },
          ]}
        />
        <ProFormText
          rules={[
            {
              required: true,
              message: 'ID时效不为空',
            },
            {
              pattern: new RegExp(/^[1-9]\d*$/, 'g'),
              message: 'ID时效必须为整数',
            },
          ]}
          width="md"
          colProps={{ span: 12 }}
          name="idTokenValiditySeconds"
          label="ID时效(s)"
          placeholder="输入ID时效"
          fieldProps={{suffix:'秒'}}
        />
      </ProForm.Group>
    </ModalForm>
  );
};

export default UpdateForm;
