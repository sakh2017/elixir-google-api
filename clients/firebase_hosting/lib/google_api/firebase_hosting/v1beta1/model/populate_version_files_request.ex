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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.PopulateVersionFilesRequest do
  @moduledoc """


  ## Attributes

  *   `files` (*type:* `map()`, *default:* `nil`) - A set of file paths to the hashes corresponding to assets that should be added to the version. A file path to an empty hash will remove the path from the version. Calculate a hash by Gzipping the file then taking the SHA256 hash of the newly compressed file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :files => map() | nil
        }

  field(:files, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.PopulateVersionFilesRequest do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.PopulateVersionFilesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.PopulateVersionFilesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
