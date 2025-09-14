.class public final Lcom/android/server/wm/PersonaActivityHelper$1;
.super Landroid/app/TaskStackListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PersonaActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersonaActivityHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastPIPModeActivityUserId:I

    .line 4
    .line 5
    return-void
.end method

.method public final onActivityUnpinned()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/wm/PersonaActivityHelper;->mLastPIPModeActivityUserId:I

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mcheckAndLockSecureFolder(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
