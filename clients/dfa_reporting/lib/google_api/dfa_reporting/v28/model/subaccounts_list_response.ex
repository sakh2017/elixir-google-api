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

defmodule GoogleApi.DFAReporting.V28.Model.SubaccountsListResponse do
  @moduledoc """
  Subaccount List Response

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#subaccountsListResponse\&quot;. Defaults to: `null`.
  - nextPageToken (String.t): Pagination token to be used for the next list operation. Defaults to: `null`.
  - subaccounts ([Subaccount]): Subaccount collection. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :nextPageToken => any(),
          :subaccounts => list(GoogleApi.DFAReporting.V28.Model.Subaccount.t())
        }

  field(:kind)
  field(:nextPageToken)
  field(:subaccounts, as: GoogleApi.DFAReporting.V28.Model.Subaccount, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.SubaccountsListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.SubaccountsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.SubaccountsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
