.class public final Lcom/android/server/SystemServer$1;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$myTid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/SystemServer$1;->val$myTid:I

    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/SystemServer$1;->val$myTid:I

    .line 3
    const/16 v0, 0xa

    .line 5
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 8
    return-void
.end method
