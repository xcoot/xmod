.class public final synthetic Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/BackupRestoreProcessor;

.field public final synthetic f$1:Landroid/companion/AssociationInfo;

.field public final synthetic f$2:Landroid/companion/AssociationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/BackupRestoreProcessor;Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;->f$1:Landroid/companion/AssociationInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/companion/AssociationInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;->f$1:Landroid/companion/AssociationInfo;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/companion/AssociationInfo;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const-string v2, "CDM_BackupRestoreProcessor"

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Association=["

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, "] is restored."

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "Failed to restore association=["

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, "]."

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method
