.class public final Lcom/android/server/blob/BlobMetadata$Leasee;
.super Lcom/android/server/blob/BlobMetadata$Accessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final description:Ljava/lang/CharSequence;

.field public final descriptionResEntryName:Ljava/lang/String;

.field public final expiryTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/CharSequence;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 3
    invoke-static {p1, p2, p3}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p1

    .line 4
    invoke-static {p4}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p3

    .line 6
    :goto_1
    iput-object p2, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    if-nez p5, :cond_4

    .line 8
    invoke-static {p4}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object p5, p1

    goto :goto_3

    :cond_3
    :goto_2
    move-object p5, p3

    .line 10
    :cond_4
    :goto_3
    iput-object p5, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;J)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 13
    iput-wide p5, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 14
    iput-object p4, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, v3, v0}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string/jumbo v0, "string"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_4
    if-nez v2, :cond_5

    .line 51
    .line 52
    const-string v2, "<none>"

    .line 53
    .line 54
    :cond_5
    const-string/jumbo p1, "desc: "

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo v0, "expiryMs: "

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final isStillValid()Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 4
    .line 5
    cmp-long p0, v2, v0

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    cmp-long p0, v2, v0

    .line 14
    .line 15
    if-ltz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public final writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "p"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "u"

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "rn"

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "ex"

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 29
    .line 30
    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "d"

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    .line 37
    .line 38
    invoke-static {p1, v0, p0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
