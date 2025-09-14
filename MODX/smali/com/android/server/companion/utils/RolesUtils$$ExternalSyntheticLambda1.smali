.class public final synthetic Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;->f$0:I

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    iget-object v1, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    const-string p1, "Failed to remove userId="

    .line 17
    const-string v2, ", packageName="

    .line 19
    const-string v3, " from the list of "

    .line 21
    invoke-static {v0, p1, v2, v1, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string p0, " holders."

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    const-string p1, "CDM_RolesUtils"

    .line 39
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method
