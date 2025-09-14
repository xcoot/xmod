.class public final Lcom/samsung/android/server/audio/AppCategorizer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final appList:Ljava/util/Hashtable;

.field public final mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/AudioSettingsHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Hashtable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getPackageList()Ljava/util/Hashtable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method


# virtual methods
.method public final putPackage(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/content/ContentValues;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "_uid"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "_package"

    .line 39
    .line 40
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p2, "_uid=\'"

    .line 44
    .line 45
    const-string v1, "\'"

    .line 46
    .line 47
    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string/jumbo p2, "selectedpkg"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
