.class public final synthetic Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsStore;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/PowerStatsStore;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSystemDir:Ljava/io/File;

    .line 9
    .line 10
    const-string v1, "battery-usage-stats"

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
