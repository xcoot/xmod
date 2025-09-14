.class public final Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mMetadata:Landroid/os/Bundle;

.field public final mUid:I

.field public final mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 5

    .line 1
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6
    .line 7
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v2, "serviceIsMultiuser"

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v3, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_0
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 36
    .line 37
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 38
    .line 39
    const/high16 v3, -0x80000000

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const-string/jumbo v4, "serviceVersion"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :cond_1
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 51
    .line 52
    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 58
    .line 59
    iput v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    .line 60
    .line 61
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 65
    .line 66
    iput v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    .line 67
    .line 68
    iput-object p2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mMetadata:Landroid/os/Bundle;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v0, v2

    .line 41
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString$com$android$server$servicewatcher$ServiceWatcher$BoundServiceInfo()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "@"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final toString$com$android$server$servicewatcher$ServiceWatcher$BoundServiceInfo()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "none"

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "/"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
