.class public final synthetic Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$4;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$4;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ShortcutService$4;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ShortcutService$4;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 6
    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
