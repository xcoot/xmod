.class public final synthetic Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

.field public final synthetic f$1:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

    .line 8
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

    .line 3
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string/jumbo v1, "some"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 19
    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 21
    const/4 v4, 0x4

    .line 22
    const-string/jumbo v5, "total"

    .line 25
    const/4 v6, 0x1

    .line 26
    const-string v7, "avg10"

    .line 28
    if-eqz v1, :cond_1

    .line 30
    if-ne p0, v3, :cond_0

    .line 32
    invoke-static {v6, p1, v7}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-ne p0, v2, :cond_3

    .line 42
    invoke-static {v4, p1, v5}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 49
    move-result-wide p0

    .line 50
    iput-wide p0, v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiSomeTotal:J

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string/jumbo v1, "full"

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 62
    if-ne p0, v3, :cond_2

    .line 64
    invoke-static {v6, p1, v7}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-ne p0, v2, :cond_3

    .line 74
    invoke-static {v4, p1, v5}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 81
    move-result-wide p0

    .line 82
    iput-wide p0, v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiFullTotal:J

    .line 84
    :cond_3
    :goto_0
    return-void
.end method
