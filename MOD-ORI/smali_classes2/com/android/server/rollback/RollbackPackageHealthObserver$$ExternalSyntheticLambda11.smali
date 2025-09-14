.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final synthetic f$1:Landroid/content/rollback/RollbackInfo;

.field public final synthetic f$2:Landroid/content/pm/VersionedPackage;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;II)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$1:Landroid/content/rollback/RollbackInfo;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/VersionedPackage;

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$1:Landroid/content/rollback/RollbackInfo;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/VersionedPackage;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$3:I

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$1:Landroid/content/rollback/RollbackInfo;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/VersionedPackage;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;->f$3:I

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
