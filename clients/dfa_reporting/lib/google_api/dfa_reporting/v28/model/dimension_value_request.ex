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

defmodule GoogleApi.DFAReporting.V28.Model.DimensionValueRequest do
  @moduledoc """
  Represents a DimensionValuesRequest.

  ## Attributes

  - dimensionName (String.t): The name of the dimension for which values should be requested. Defaults to: `null`.
  - endDate (Date.t): The end date of the date range for which to retrieve dimension values. A string of the format \&quot;yyyy-MM-dd\&quot;. Defaults to: `null`.
  - filters ([DimensionFilter]): The list of filters by which to filter values. The filters are ANDed. Defaults to: `null`.
  - kind (String.t): The kind of request this is, in this case dfareporting#dimensionValueRequest. Defaults to: `null`.
  - startDate (Date.t): The start date of the date range for which to retrieve dimension values. A string of the format \&quot;yyyy-MM-dd\&quot;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionName => any(),
          :endDate => Date.t(),
          :filters => list(GoogleApi.DFAReporting.V28.Model.DimensionFilter.t()),
          :kind => any(),
          :startDate => Date.t()
        }

  field(:dimensionName)
  field(:endDate, as: Date)
  field(:filters, as: GoogleApi.DFAReporting.V28.Model.DimensionFilter, type: :list)
  field(:kind)
  field(:startDate, as: Date)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.DimensionValueRequest do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.DimensionValueRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.DimensionValueRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
