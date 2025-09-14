.class public final synthetic Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

.field public final synthetic f$1:Lcom/android/server/locksettings/LockSettingsService$1;

.field public final synthetic f$2:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;Lcom/android/server/locksettings/LockSettingsService$1;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/locksettings/LockSettingsService$1;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;->f$2:Ljava/util/concurrent/CompletableFuture;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/locksettings/LockSettingsService$1;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;->f$2:Ljava/util/concurrent/CompletableFuture;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "Received callback: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " - "

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
