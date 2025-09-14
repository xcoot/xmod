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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "ASKSState info {"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string/jumbo v1, "restrict = "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    const-string v1, " emmode = "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const-string v1, " deletable = "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService$Deletable;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    :cond_2
    const-string/jumbo p0, "}"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
