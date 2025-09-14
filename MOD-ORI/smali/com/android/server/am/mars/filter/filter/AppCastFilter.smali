.class public final Lcom/android/server/am/mars/filter/filter/AppCastFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# static fields
.field public static final URI_APP_CAST_ENABLED:Landroid/net/Uri;

.field public static final URI_APP_CAST_PACKAGE:Landroid/net/Uri;


# instance fields
.field public mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

.field public mAppCastPackage:Ljava/lang/String;

.field public mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

.field public mContext:Landroid/content/Context;

.field public mIsAppCastEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "content://com.samsung.android.smartmirroring/app_cast_sent_result"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    .line 9
    .line 10
    const-string/jumbo v0, "content://com.samsung.android.smartmirroring/app_cast_sent_top_package"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_PACKAGE:Landroid/net/Uri;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/16 p0, 0x18

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 11
    .line 12
    new-instance v1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/os/Handler;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v1, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 32
    .line 33
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    new-instance p1, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 44
    .line 45
    new-instance v1, Landroid/os/Handler;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/os/Handler;I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v1, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_PACKAGE:Landroid/net/Uri;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_2
    return-void
.end method
