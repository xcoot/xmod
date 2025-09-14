.class public abstract Lcom/android/server/alarm/AppSyncWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "eng"

    .line 2
    .line 3
    .line 4
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getWindowLength()J
.end method

.method public abstract isAdjustableAlarm(IIJJJLjava/lang/String;)Z
.end method
