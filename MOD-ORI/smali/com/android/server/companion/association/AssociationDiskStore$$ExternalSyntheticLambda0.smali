.class public final synthetic Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/Associations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/Associations;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/Associations;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/Associations;

    .line 2
    .line 3
    check-cast p1, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v0, "state"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "persistence-version"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string v1, "associations"

    .line 35
    .line 36
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v4, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroid/companion/AssociationInfo;

    .line 57
    .line 58
    const-string v6, "association"

    .line 59
    .line 60
    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const-string/jumbo v9, "id"

    .line 69
    .line 70
    .line 71
    invoke-static {v7, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    const-string/jumbo v8, "profile"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v8, "package"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v8, "tag"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getTag()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v8, "mac_address"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    const-string/jumbo v8, "display_name"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    const-string/jumbo v8, "self_managed"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    const-string/jumbo v8, "notify_device_nearby"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v8, "revoked"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isRevoked()Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    const-string/jumbo v8, "pending"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isPending()Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v8, "time_approved"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    .line 168
    .line 169
    .line 170
    move-result-wide v9

    .line 171
    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 172
    .line 173
    .line 174
    const-string/jumbo v8, "last_time_connected"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    .line 178
    .line 179
    .line 180
    move-result-wide v9

    .line 181
    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 182
    .line 183
    .line 184
    const-string/jumbo v8, "system_data_sync_flags"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v7, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_0
    iget p0, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 200
    .line 201
    const-string/jumbo v4, "max-id"

    .line 202
    .line 203
    .line 204
    invoke-static {v3, v4, p0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    .line 209
    .line 210
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    .line 212
    .line 213
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 214
    .line 215
    .line 216
    return-void
.end method
