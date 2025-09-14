.class public final Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final GMS_PACKAGES:[Ljava/lang/String;

.field public static final isToggleSupported:Z


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com.google.android.configupdater"

    .line 2
    .line 3
    const-string v1, "com.google.android.syncadapters.calendar"

    .line 4
    .line 5
    const-string v2, "com.google.android.gms"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->GMS_PACKAGES:[Ljava/lang/String;

    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    sput-boolean v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->isToggleSupported:Z

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setApplicationEnabledSettingAsUser(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v0, v6

    .line 13
    move-object v1, p1

    .line 14
    move v2, p2

    .line 15
    move v4, p3

    .line 16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v6, p1, p3}, Landroid/content/pm/IPackageManager;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    if-ne p2, p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-interface {v6, p1, p0, p3}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final setEnabledStateForGmsPackages(II)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->GMS_PACKAGES:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    const/4 v2, 0x3

    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    aget-object v2, v0, v1

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setApplicationEnabledSettingAsUser(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "Fail to enable "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "PackageManager"

    .line 32
    .line 33
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final setGmsEnabledSetting(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/os/UserManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/UserManager;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-boolean v1, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->isToggleSupported:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v3, "google_core_control"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x2

    .line 36
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 37
    if-ne p1, v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 58
    .line 59
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 60
    .line 61
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setEnabledStateForGmsPackages(II)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setEnabledStateForGmsPackages(II)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void
.end method
