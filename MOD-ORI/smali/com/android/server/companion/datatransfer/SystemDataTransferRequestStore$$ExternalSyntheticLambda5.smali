.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Ljava/io/FileOutputStream;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "requests"

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 48
    .line 49
    const-string/jumbo v3, "request"

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const-string v5, "association_id"

    .line 60
    .line 61
    invoke-static {p1, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string/jumbo v4, "data_type"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getDataType()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {p1, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    const-string/jumbo v4, "is_user_consented"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->isUserConsented()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {p1, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
