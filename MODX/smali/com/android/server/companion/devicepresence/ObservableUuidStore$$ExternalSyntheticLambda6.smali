.class public final synthetic Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    .line 5
    check-cast p1, Ljava/io/FileOutputStream;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 13
    move-result-object p1

    .line 14
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 27
    const-string/jumbo v0, "uuids"

    .line 30
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 49
    const-string/jumbo v3, "uuid"

    .line 52
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    iget v4, v2, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUserId:I

    .line 57
    const-string/jumbo v5, "user_id"

    .line 60
    invoke-static {p1, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 63
    iget-object v4, v2, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 65
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    invoke-static {p1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 72
    const-string/jumbo v4, "package_name"

    .line 75
    iget-object v5, v2, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    .line 77
    invoke-static {p1, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 80
    const-string/jumbo v4, "time_approved"

    .line 83
    iget-wide v5, v2, Lcom/android/server/companion/devicepresence/ObservableUuid;->mTimeApprovedMs:J

    .line 85
    invoke-static {p1, v4, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 88
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 98
    return-void
.end method
