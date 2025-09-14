.class public final Lcom/android/server/slice/SliceProviderPermissions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# instance fields
.field public final mAuths:Landroid/util/ArrayMap;

.field public final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field public final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/slice/SliceProviderPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 14
    .line 15
    return-void
.end method

.method public static createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;
    .locals 6

    .line 1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    const-string/jumbo v0, "provider"

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-instance v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const-string/jumbo v4, "pkg"

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {v2, v4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/android/server/slice/SliceProviderPermissions;

    .line 40
    .line 41
    invoke-direct {v4, v2, p1}, Lcom/android/server/slice/SliceProviderPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-le p1, v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-ne p1, v1, :cond_1

    .line 58
    .line 59
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v2, "authority"

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    :try_start_0
    new-instance p1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 72
    .line 73
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-direct {p1, v2, v4}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/SliceProviderPermissions;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p0}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->readFrom(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, v4, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 84
    .line 85
    iget-object v5, p1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move-exception p1

    .line 92
    const-string v2, "SliceProviderPermissions"

    .line 93
    .line 94
    const-string v5, "Couldn\'t read PkgUser"

    .line 95
    .line 96
    invoke-static {v2, v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    return-object v4

    .line 104
    :cond_3
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 105
    .line 106
    .line 107
    goto :goto_0
.end method


# virtual methods
.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "provider_"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/slice/SliceProviderPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "provider"

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "pkg"

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v0, :cond_0

    .line 29
    .line 30
    const-string v3, "authority"

    .line 31
    .line 32
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    .line 34
    .line 35
    const-string v3, "authority"

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 44
    .line 45
    iget-object v4, v4, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 57
    .line 58
    invoke-virtual {v3, p1}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 59
    .line 60
    .line 61
    const-string v3, "authority"

    .line 62
    .line 63
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    const-string/jumbo v0, "provider"

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_1
    monitor-exit p0

    .line 80
    throw p1
.end method
