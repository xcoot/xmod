.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

.field public final synthetic f$1:Landroid/view/KeyEvent;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$1:Landroid/view/KeyEvent;

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$2:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$1:Landroid/view/KeyEvent;

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$2:Z

    .line 11
    .line 12
    new-instance v2, Landroid/view/KeyEvent;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel(Landroid/view/KeyEvent;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$1:Landroid/view/KeyEvent;

    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$2:Z

    .line 26
    .line 27
    new-instance v2, Landroid/view/KeyEvent;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel(Landroid/view/KeyEvent;Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
