.class public final Lcom/android/server/pm/ShortcutService$4;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidGone(IZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutService$4;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2
    .line 3
    new-instance p4, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService$4;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p4}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
