.class public final Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# instance fields
.field public final mAuthority:Ljava/lang/String;

.field public final mPkgs:Landroid/util/ArraySet;

.field public final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/slice/SliceProviderPermissions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-class v1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    check-cast p1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :cond_2
    return v1
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final declared-synchronized readFrom(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v1, v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    const-string/jumbo v1, "pkg"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 36
    .line 37
    new-instance v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 38
    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v2, v3}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_2
    monitor-exit p0

    .line 59
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "("

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, ": "

    .line 17
    .line 18
    const-string v3, ")"

    .line 19
    .line 20
    invoke-static {v1, p0, v2, v0, v3}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v2, "pkg"

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v2, "pkg"

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit p0

    .line 47
    throw p1
.end method
