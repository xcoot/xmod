.class public final synthetic Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/companion/association/DisassociationProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    .line 11
    .line 12
    const/16 v1, 0xc8

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
