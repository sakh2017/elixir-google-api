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

defmodule GoogleApi.Classroom.V1.Model.Feed do
  @moduledoc """
  A class of notifications that an application can register to receive. For example: \&quot;all roster changes for a domain\&quot;.

  ## Attributes

  - courseRosterChangesInfo (CourseRosterChangesInfo): Information about a &#x60;Feed&#x60; with a &#x60;feed_type&#x60; of &#x60;COURSE_ROSTER_CHANGES&#x60;. This field must be specified if &#x60;feed_type&#x60; is &#x60;COURSE_ROSTER_CHANGES&#x60;. Defaults to: `null`.
  - courseWorkChangesInfo (CourseWorkChangesInfo): Information about a &#x60;Feed&#x60; with a &#x60;feed_type&#x60; of &#x60;COURSE_WORK_CHANGES&#x60;. This field must be specified if &#x60;feed_type&#x60; is &#x60;COURSE_WORK_CHANGES&#x60;. Defaults to: `null`.
  - feedType (String.t): The type of feed. Defaults to: `null`.
    - Enum - one of [FEED_TYPE_UNSPECIFIED, DOMAIN_ROSTER_CHANGES, COURSE_ROSTER_CHANGES, COURSE_WORK_CHANGES]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :courseRosterChangesInfo => GoogleApi.Classroom.V1.Model.CourseRosterChangesInfo.t(),
          :courseWorkChangesInfo => GoogleApi.Classroom.V1.Model.CourseWorkChangesInfo.t(),
          :feedType => any()
        }

  field(:courseRosterChangesInfo, as: GoogleApi.Classroom.V1.Model.CourseRosterChangesInfo)
  field(:courseWorkChangesInfo, as: GoogleApi.Classroom.V1.Model.CourseWorkChangesInfo)
  field(:feedType)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Feed do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.Feed.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Feed do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
