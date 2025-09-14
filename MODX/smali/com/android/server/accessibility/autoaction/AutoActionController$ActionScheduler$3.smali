.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 5
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 7
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const p0, 0x1040201

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p0, 0x1040202

    .line 18
    :goto_0
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 26
    return-void
.end method
