.class public final Lcom/android/server/RescueParty$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$failedPackage:Ljava/lang/String;

.field public final synthetic val$level:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/RescueParty$1;->val$context:Landroid/content/Context;

    .line 6
    iput p3, p0, Lcom/android/server/RescueParty$1;->val$level:I

    .line 8
    iput-object p2, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "RescueParty by "

    .line 3
    :try_start_0
    const-string/jumbo v1, "persist.sys.emergency_reset"

    .line 6
    const-string/jumbo v2, "unknown"

    .line 9
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "emergency"

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    sget-boolean v1, Lcom/android/server/RescueParty;->isUnrecoverable:Z

    .line 24
    if-nez v1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/server/RescueParty$1;->val$context:Landroid/content/Context;

    .line 28
    iget v1, p0, Lcom/android/server/RescueParty$1;->val$level:I

    .line 30
    iget-object v2, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    .line 32
    invoke-static {v0, v2, v1}, Lcom/android/server/RescueParty;->-$$Nest$smexecuteEraseAppData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    iget-object v2, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    .line 45
    if-nez v2, :cond_1

    .line 47
    const-string v2, "PlatformReset"

    .line 49
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, " ("

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v2, p0, Lcom/android/server/RescueParty$1;->val$level:I

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, ")"

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/android/server/RescueParty$1;->val$context:Landroid/content/Context;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v2, v0}, Landroid/os/RecoverySystem;->rebootPromptAndWipeAppData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    goto :goto_1

    .line 89
    :goto_0
    iget v1, p0, Lcom/android/server/RescueParty$1;->val$level:I

    .line 91
    iget-object p0, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    .line 93
    invoke-static {v1, p0, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :goto_1
    return-void
.end method
