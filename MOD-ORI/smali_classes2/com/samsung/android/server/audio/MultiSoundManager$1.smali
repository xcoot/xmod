.class public final Lcom/samsung/android/server/audio/MultiSoundManager$1;
.super Landroid/app/TaskStackListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$1;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTaskFocusChanged(IZ)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$1;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$mupdateForegroundAppUid(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onTaskRemoved(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$1;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$mupdateForegroundAppUid(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
