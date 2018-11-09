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

defmodule GoogleApi.AdExchangeBuyer.V14.Api.Creatives do
  @moduledoc """
  API calls for all endpoints tagged `Creatives`.
  """

  alias GoogleApi.AdExchangeBuyer.V14.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Add a deal id association for the creative.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (integer()): The id for the account that will serve this creative.
  - buyer_creative_id (String.t): The buyer-specific id for this creative.
  - deal_id (String.t): The id of the deal id to associate with this creative.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_creatives_add_deal(
          Tesla.Env.client(),
          integer(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def adexchangebuyer_creatives_add_deal(
        connection,
        account_id,
        buyer_creative_id,
        deal_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/creatives/{accountId}/{buyerCreativeId}/addDeal/{dealId}", %{
        "accountId" => account_id,
        "buyerCreativeId" => URI.encode_www_form(buyer_creative_id),
        "dealId" => URI.encode_www_form(deal_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets the status for a single creative. A creative will be available 30-40 minutes after submission.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (integer()): The id for the account that will serve this creative.
  - buyer_creative_id (String.t): The buyer-specific id for this creative.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.Creative{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_creatives_get(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.Creative.t()} | {:error, Tesla.Env.t()}
  def adexchangebuyer_creatives_get(
        connection,
        account_id,
        buyer_creative_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/creatives/{accountId}/{buyerCreativeId}", %{
        "accountId" => account_id,
        "buyerCreativeId" => URI.encode_www_form(buyer_creative_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.Creative{}])
  end

  @doc """
  Submit a new creative.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Creative): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.Creative{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_creatives_insert(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.Creative.t()} | {:error, Tesla.Env.t()}
  def adexchangebuyer_creatives_insert(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/creatives")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.Creative{}])
  end

  @doc """
  Retrieves a list of the authenticated user&#39;s active creatives. A creative will be available 30-40 minutes after submission.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :accountId ([integer()]): When specified, only creatives for the given account ids are returned.
    - :buyerCreativeId ([String.t]): When specified, only creatives for the given buyer creative ids are returned.
    - :dealsStatusFilter (String.t): When specified, only creatives having the given deals status are returned.
    - :maxResults (integer()): Maximum number of entries returned on one result page. If not set, the default is 100. Optional.
    - :openAuctionStatusFilter (String.t): When specified, only creatives having the given open auction status are returned.
    - :pageToken (String.t): A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response. Optional.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.CreativesList{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_creatives_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.CreativesList.t()} | {:error, Tesla.Env.t()}
  def adexchangebuyer_creatives_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :accountId => :query,
      :buyerCreativeId => :query,
      :dealsStatusFilter => :query,
      :maxResults => :query,
      :openAuctionStatusFilter => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/creatives")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.CreativesList{}])
  end

  @doc """
  Lists the external deal ids associated with the creative.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (integer()): The id for the account that will serve this creative.
  - buyer_creative_id (String.t): The buyer-specific id for this creative.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIds{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_creatives_list_deals(Tesla.Env.client(), integer(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIds.t()} | {:error, Tesla.Env.t()}
  def adexchangebuyer_creatives_list_deals(
        connection,
        account_id,
        buyer_creative_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/creatives/{accountId}/{buyerCreativeId}/listDeals", %{
        "accountId" => account_id,
        "buyerCreativeId" => URI.encode_www_form(buyer_creative_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIds{}])
  end

  @doc """
  Remove a deal id associated with the creative.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (integer()): The id for the account that will serve this creative.
  - buyer_creative_id (String.t): The buyer-specific id for this creative.
  - deal_id (String.t): The id of the deal id to disassociate with this creative.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_creatives_remove_deal(
          Tesla.Env.client(),
          integer(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def adexchangebuyer_creatives_remove_deal(
        connection,
        account_id,
        buyer_creative_id,
        deal_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/creatives/{accountId}/{buyerCreativeId}/removeDeal/{dealId}", %{
        "accountId" => account_id,
        "buyerCreativeId" => URI.encode_www_form(buyer_creative_id),
        "dealId" => URI.encode_www_form(deal_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end
end
