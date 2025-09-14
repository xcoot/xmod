.class public final Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgress(I)V
    .locals 4

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    int-to-double v0, p1

    .line 8
    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    .line 9
    .line 10
    mul-double/2addr v0, v2

    .line 11
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 12
    .line 13
    div-double/2addr v0, v2

    .line 14
    double-to-int p1, v0

    .line 15
    add-int/lit8 p1, p1, 0x14

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const v0, 0x1040c67

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p0}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const v0, 0x1040c69

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 48
    .line 49
    invoke-virtual {v0, p1, p0}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method
