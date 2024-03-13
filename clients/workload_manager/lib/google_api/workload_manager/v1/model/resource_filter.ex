# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.WorkloadManager.V1.Model.ResourceFilter do
  @moduledoc """
  Message describing resource filters

  ## Attributes

  *   `gceInstanceFilter` (*type:* `GoogleApi.WorkloadManager.V1.Model.GceInstanceFilter.t`, *default:* `nil`) - Filter compute engine resource
  *   `inclusionLabels` (*type:* `map()`, *default:* `nil`) - The label used for filter resource
  *   `resourceIdPatterns` (*type:* `list(String.t)`, *default:* `nil`) - The id pattern for filter resource
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - The scopes of evaluation resource
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gceInstanceFilter => GoogleApi.WorkloadManager.V1.Model.GceInstanceFilter.t() | nil,
          :inclusionLabels => map() | nil,
          :resourceIdPatterns => list(String.t()) | nil,
          :scopes => list(String.t()) | nil
        }

  field(:gceInstanceFilter, as: GoogleApi.WorkloadManager.V1.Model.GceInstanceFilter)
  field(:inclusionLabels, type: :map)
  field(:resourceIdPatterns, type: :list)
  field(:scopes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.ResourceFilter do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.ResourceFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.ResourceFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
