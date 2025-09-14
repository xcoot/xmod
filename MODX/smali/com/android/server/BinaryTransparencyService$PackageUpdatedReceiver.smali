.class public final Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "TransparencyService"

    .line 20
    if-nez p1, :cond_1

    .line 22
    const-string p0, "Shouldn\'t happen: intent data is null!"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_1
    const-string v1, "android.intent.extra.REPLACING"

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_2

    .line 37
    const-string p0, "Not an update. Skipping..."

    .line 39
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 49
    iget-object p2, p2, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    move-result-object p2

    .line 55
    const-wide/32 v3, 0x200000

    .line 58
    :try_start_0
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    iget-object p2, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 68
    iget-object p2, p2, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    move-result-object p2

    .line 74
    const-wide/32 v3, 0x40000000

    .line 77
    :try_start_1
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 84
    move-result-object p2

    .line 85
    iget-boolean v2, p2, Landroid/content/pm/PackageInfo;->isApex:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :catch_1
    if-eqz v2, :cond_3

    .line 89
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string p1, " was updated. Scheduling measurement..."

    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 111
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;)V

    .line 116
    :cond_3
    return-void
.end method
