.class public final Lcom/android/server/LooperStatsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/LooperStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LooperStatsService;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    iput-object p1, p0, Lcom/android/server/LooperStatsService$SettingsObserver;->mService:Lcom/android/server/LooperStatsService;

    .line 10
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/LooperStatsService$SettingsObserver;->mService:Lcom/android/server/LooperStatsService;

    .line 3
    invoke-static {p0}, Lcom/android/server/LooperStatsService;->-$$Nest$minitFromSettings(Lcom/android/server/LooperStatsService;)V

    .line 6
    return-void
.end method
