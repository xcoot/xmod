.class public final synthetic Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 23
    .line 24
    const/high16 v4, 0x54000000

    .line 25
    .line 26
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
