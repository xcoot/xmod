.class public final Lcom/android/server/enterprise/threatdefense/RuleParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPacakagePublicSignature:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPolicyVersion:Ljava/lang/String;

.field public final mProcLength:I

.field public final mProcList:Ljava/util/ArrayList;

.field public final mProcessProcLength:I

.field public final mProcessProcList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    .line 20
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    const-string/jumbo p1, "pkg"

    .line 26
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    .line 32
    const-string/jumbo p1, "pkg_pem"

    .line 35
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPacakagePublicSignature:Ljava/lang/String;

    .line 41
    const-string/jumbo p1, "version"

    .line 44
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPolicyVersion:Ljava/lang/String;

    .line 50
    new-instance p1, Lorg/json/JSONArray;

    .line 52
    const-string/jumbo v1, "proc_list"

    .line 55
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v1, 0x0

    .line 63
    move v2, v1

    .line 64
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 67
    move-result v3

    .line 68
    if-ge v2, v3, :cond_1

    .line 70
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 97
    move-result p1

    .line 98
    iput p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcLength:I

    .line 100
    new-instance p1, Lorg/json/JSONArray;

    .line 102
    const-string/jumbo v2, "process_proc_list"

    .line 105
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 112
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 115
    move-result v0

    .line 116
    if-ge v1, v0, :cond_3

    .line 118
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 145
    move-result p1

    .line 146
    iput p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcLength:I

    .line 148
    return-void
.end method


# virtual methods
.method public final getProcList()Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcLength:I

    .line 9
    if-lez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    if-eq v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 22
    return-object p0

    .line 23
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "Invalid proc : "

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string p0, "/"

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    const-string v0, "RuleParser"

    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public final getProcessProcList()Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcLength:I

    .line 17
    if-eq v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 22
    return-object p0

    .line 23
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "Invalid process proc : "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "/"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    const-string v0, "RuleParser"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPolicyVersion:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "|"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    sget-boolean v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 51
    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v2

    .line 59
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object p0

    .line 84
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method
