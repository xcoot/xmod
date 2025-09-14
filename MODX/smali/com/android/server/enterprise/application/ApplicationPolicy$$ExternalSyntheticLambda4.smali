.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;->f$1:Landroid/content/Intent;

    .line 8
    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;->f$1:Landroid/content/Intent;

    .line 5
    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda4;->f$2:I

    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
