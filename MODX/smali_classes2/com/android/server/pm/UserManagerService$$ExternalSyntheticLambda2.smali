.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v5, "Updated restriction "

    .line 14
    .line 15
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "("

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ") for User "

    .line 30
    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", callingUid: "

    .line 35
    .line 36
    const-string v1, ", stack: "

    .line 37
    .line 38
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
