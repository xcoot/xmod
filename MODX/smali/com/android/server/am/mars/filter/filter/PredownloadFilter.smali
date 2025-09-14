.class public final Lcom/android/server/am/mars/filter/filter/PredownloadFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

.field public final mTempAllowlist:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    .line 16
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v1, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->registered:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    .line 11
    iget-object v1, v1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->registered:Z

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 24
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;

    .line 3
    invoke-direct {p1, p2, p4}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;-><init>(ILjava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    const-string p0, "MARs:PredownloadFilter"

    .line 16
    const-string p1, "EXEMPT!"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/16 p0, 0x1c

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    .line 10
    if-nez p1, :cond_0

    .line 12
    new-instance p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    .line 14
    invoke-direct {p1, p0}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;)V

    .line 17
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    .line 21
    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->registered:Z

    .line 23
    if-nez p1, :cond_1

    .line 25
    const-string/jumbo p1, "com.samsung.action_exempt_for_pre_download"

    .line 28
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    .line 34
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->registered:Z

    .line 43
    :cond_1
    const-string/jumbo p0, "sys.config.mars.predl_filter.enabled"

    .line 46
    const-string p1, "1"

    .line 48
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
