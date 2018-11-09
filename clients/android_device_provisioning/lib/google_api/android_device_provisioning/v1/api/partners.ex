# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Api.Partners do
  @moduledoc """
  API calls for all endpoints tagged `Partners`.
  """

  alias GoogleApi.AndroidDeviceProvisioning.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a customer for zero-touch enrollment. After the method returns successfully, admin and owner roles can manage devices and EMM configs by calling API methods or using their zero-touch enrollment portal. The customer receives an email that welcomes them to zero-touch enrollment and explains how to sign into the portal.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The parent resource ID in the format &#x60;partners/[PARTNER_ID]&#x60; that identifies the reseller.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (CreateCustomerRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Company{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_customers_create(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Company.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_customers_create(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/customers", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Company{}])
  end

  @doc """
  Lists the customers that are enrolled to the reseller identified by the &#x60;partnerId&#x60; argument. This list includes customers that the reseller created and customers that enrolled themselves using the portal.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - partner_id (String.t): Required. The ID of the reseller partner.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :pageSize (integer()): The maximum number of results to be returned. If not specified or 0, all the records are returned.
    - :pageToken (String.t): A token identifying a page of results returned by the server.

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.ListCustomersResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_customers_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.ListCustomersResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_customers_list(
        connection,
        partner_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/partners/{+partnerId}/customers", %{
        "partnerId" => URI.encode_www_form(partner_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.ListCustomersResponse{}]
    )
  end

  @doc """
  Claims a device for a customer and adds it to zero-touch enrollment. If the device is already claimed by another customer, the call returns an error.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - partner_id (String.t): Required. The ID of the reseller partner.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (ClaimDeviceRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.ClaimDeviceResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_devices_claim(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.ClaimDeviceResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_devices_claim(
        connection,
        partner_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{+partnerId}/devices:claim", %{
        "partnerId" => URI.encode_www_form(partner_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.ClaimDeviceResponse{}]
    )
  end

  @doc """
  Claims a batch of devices for a customer asynchronously. Adds the devices to zero-touch enrollment. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - partner_id (String.t): Required. The ID of the reseller partner.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (ClaimDevicesRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_devices_claim_async(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_devices_claim_async(
        connection,
        partner_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{+partnerId}/devices:claimAsync", %{
        "partnerId" => URI.encode_www_form(partner_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation{}]
    )
  end

  @doc """
  Finds devices by hardware identifiers, such as IMEI.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - partner_id (String.t): Required. The ID of the reseller partner.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (FindDevicesByDeviceIdentifierRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByDeviceIdentifierResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_devices_find_by_identifier(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByDeviceIdentifierResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_devices_find_by_identifier(
        connection,
        partner_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{+partnerId}/devices:findByIdentifier", %{
        "partnerId" => URI.encode_www_form(partner_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByDeviceIdentifierResponse{}
        ]
    )
  end

  @doc """
  Finds devices claimed for customers. The results only contain devices registered to the reseller that&#39;s identified by the &#x60;partnerId&#x60; argument. The customer&#39;s devices purchased from other resellers don&#39;t appear in the results.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - partner_id (String.t): Required. The ID of the reseller partner.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (FindDevicesByOwnerRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByOwnerResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_devices_find_by_owner(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByOwnerResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_devices_find_by_owner(
        connection,
        partner_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{+partnerId}/devices:findByOwner", %{
        "partnerId" => URI.encode_www_form(partner_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.FindDevicesByOwnerResponse{}]
    )
  end

  @doc """
  Gets a device.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - name (String.t): Required. The device API resource name in the format &#x60;partners/[PARTNER_ID]/devices/[DEVICE_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Device{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_devices_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Device.t()} | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_devices_get(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Device{}])
  end

  @doc """
  Updates reseller metadata associated with the device.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - metadata_owner_id (String.t): Required. The owner of the newly set metadata. Set this to the partner ID.
  - device_id (String.t): Required. The ID of the reseller partner.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (UpdateDeviceMetadataRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_devices_metadata(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_devices_metadata(
        connection,
        metadata_owner_id,
        device_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{+metadataOwnerId}/devices/{+deviceId}/metadata", %{
        "metadataOwnerId" => URI.encode_www_form(metadata_owner_id),
        "deviceId" => URI.encode_www_form(device_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata{}]
    )
  end

  @doc """
  Unclaims a device from a customer and removes it from zero-touch enrollment.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - partner_id (String.t): Required. The ID of the reseller partner.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (UnclaimDeviceRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_devices_unclaim(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_devices_unclaim(
        connection,
        partner_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{+partnerId}/devices:unclaim", %{
        "partnerId" => URI.encode_www_form(partner_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}])
  end

  @doc """
  Unclaims a batch of devices for a customer asynchronously. Removes the devices from zero-touch enrollment. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - partner_id (String.t): Required. The reseller partner ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (UnclaimDevicesRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_devices_unclaim_async(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_devices_unclaim_async(
        connection,
        partner_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{+partnerId}/devices:unclaimAsync", %{
        "partnerId" => URI.encode_www_form(partner_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation{}]
    )
  end

  @doc """
  Updates the reseller metadata attached to a batch of devices. This method updates devices asynchronously and returns an &#x60;Operation&#x60; that can be used to track progress. Read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - partner_id (String.t): Required. The reseller partner ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :body (UpdateDeviceMetadataInBatchRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_devices_update_metadata_async(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_devices_update_metadata_async(
        connection,
        partner_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{+partnerId}/devices:updateMetadataAsync", %{
        "partnerId" => URI.encode_www_form(partner_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Operation{}]
    )
  end

  @doc """
  Lists the customers of the vendor.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The resource name in the format &#x60;partners/[PARTNER_ID]/vendors/[VENDOR_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :pageSize (integer()): The maximum number of results to be returned.
    - :pageToken (String.t): A token identifying a page of results returned by the server.

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.ListVendorCustomersResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_vendors_customers_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.ListVendorCustomersResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_vendors_customers_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/customers", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.ListVendorCustomersResponse{}]
    )
  end

  @doc """
  Lists the vendors of the partner.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The resource name in the format &#x60;partners/[PARTNER_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :pageSize (integer()): The maximum number of results to be returned.
    - :pageToken (String.t): A token identifying a page of results returned by the server.

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.ListVendorsResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_partners_vendors_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.ListVendorsResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_partners_vendors_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :uploadType => :query,
      :fields => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/vendors", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.ListVendorsResponse{}]
    )
  end
end
