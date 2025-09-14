.class public final Lcom/android/server/uri/GrantUri;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final prefix:Z

.field public final sourceUserId:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(IILandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    and-int/lit16 p1, p2, 0x80

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 16
    .line 17
    return-void
.end method

.method public static resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "content"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/uri/GrantUri;

    .line 14
    .line 15
    invoke-static {p2, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/android/server/uri/GrantUri;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method


# virtual methods
.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    iget-object v0, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide v1, 0x10900000002L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-wide v0, 0x10500000001L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/uri/GrantUri;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/android/server/uri/GrantUri;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 19
    .line 20
    iget v2, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 25
    .line 26
    iget-boolean p1, p1, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 27
    .line 28
    if-ne p0, p1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v0

    .line 14
    mul-int/2addr v2, v1

    .line 15
    iget-boolean p0, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/16 p0, 0x4cf

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 p0, 0x4d5

    .line 23
    .line 24
    :goto_0
    add-int/2addr v2, p0

    .line 25
    return v2
.end method

.method public final toSafeString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " [user "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 21
    .line 22
    const-string v2, "]"

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-boolean p0, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string p0, " [prefix]"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " [user "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 21
    .line 22
    const-string v2, "]"

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-boolean p0, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string p0, " [prefix]"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method
