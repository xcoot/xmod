.class public final Lcom/android/server/asks/ASKSManagerService$ASKSState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

.field public emMode:I

.field public restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 10
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    const-string v1, "ASKSState info {"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const-string/jumbo v1, "restrict = "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 20
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    :cond_0
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 29
    const/4 v2, -0x1

    .line 30
    if-eq v1, v2, :cond_1

    .line 32
    const-string v1, " emmode = "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 39
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 48
    if-eqz v1, :cond_2

    .line 50
    const-string v1, " deletable = "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService$Deletable;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :cond_2
    const-string/jumbo p0, "}"

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
