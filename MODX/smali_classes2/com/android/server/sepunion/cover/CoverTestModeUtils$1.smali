.class public final Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    sget p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-interface {p0, p1, v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
