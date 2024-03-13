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

defmodule GoogleApi.WorkloadManager.V1.Model.BigQueryDestination do
  @moduledoc """
  Message describing big query destination

  ## Attributes

  *   `createNewResultsTable` (*type:* `boolean()`, *default:* `nil`) - Optional. determine if results will be saved in a new table
  *   `destinationDataset` (*type:* `String.t`, *default:* `nil`) - Optional. destination dataset to save evaluation results
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createNewResultsTable => boolean() | nil,
          :destinationDataset => String.t() | nil
        }

  field(:createNewResultsTable)
  field(:destinationDataset)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.BigQueryDestination do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.BigQueryDestination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.BigQueryDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
