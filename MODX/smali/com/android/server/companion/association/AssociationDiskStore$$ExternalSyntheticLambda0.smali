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

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/Associations;

    .line 6
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/Associations;

    .line 3
    check-cast p1, Ljava/io/FileOutputStream;

    .line 5
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 8
    move-result-object p1

    .line 9
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 22
    const-string/jumbo v0, "state"

    .line 25
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    const-string/jumbo v3, "persistence-version"

    .line 31
    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 34
    const-string v1, "associations"

    .line 36
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    move-result-object v3

    .line 40
    iget-object v4, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 42
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v4

    .line 46
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 52
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroid/companion/AssociationInfo;

    .line 58
    const-string v6, "association"

    .line 60
    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    .line 67
    move-result v8

    .line 68
    const-string/jumbo v9, "id"

    .line 71
    invoke-static {v7, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 74
    const-string/jumbo v8, "profile"

    .line 77
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 80
    move-result-object v9

    .line 81
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 84
    const-string/jumbo v8, "package"

    .line 87
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 90
    move-result-object v9

    .line 91
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 94
    const-string/jumbo v8, "tag"

    .line 97
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getTag()Ljava/lang/String;

    .line 100
    move-result-object v9

    .line 101
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 104
    const-string/jumbo v8, "mac_address"

    .line 107
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    .line 110
    move-result-object v9

    .line 111
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 114
    const-string/jumbo v8, "display_name"

    .line 117
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 120
    move-result-object v9

    .line 121
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 124
    const-string/jumbo v8, "self_managed"

    .line 127
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    .line 130
    move-result v9

    .line 131
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 134
    const-string/jumbo v8, "notify_device_nearby"

    .line 137
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 140
    move-result v9

    .line 141
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 144
    const-string/jumbo v8, "revoked"

    .line 147
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isRevoked()Z

    .line 150
    move-result v9

    .line 151
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 154
    const-string/jumbo v8, "pending"

    .line 157
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isPending()Z

    .line 160
    move-result v9

    .line 161
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 164
    const-string/jumbo v8, "time_approved"

    .line 167
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    .line 170
    move-result-wide v9

    .line 171
    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 174
    const-string/jumbo v8, "last_time_connected"

    .line 177
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    .line 180
    move-result-wide v9

    .line 181
    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 184
    const-string/jumbo v8, "system_data_sync_flags"

    .line 187
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 190
    move-result v5

    .line 191
    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 194
    invoke-interface {v7, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    goto/16 :goto_0

    .line 199
    :cond_0
    iget p0, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 201
    const-string/jumbo v4, "max-id"

    .line 204
    invoke-static {v3, v4, p0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 207
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 216
    return-void
.end method
