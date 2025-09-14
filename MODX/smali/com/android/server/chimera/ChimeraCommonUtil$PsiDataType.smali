.class public final enum Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

.field public static final enum AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

.field public static final enum TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "avg10"

    .line 6
    const-string v3, "AVG10"

    .line 8
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 13
    new-instance v1, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 15
    const/4 v2, 0x1

    .line 16
    const-string/jumbo v3, "total"

    .line 19
    const-string v4, "TOTAL"

    .line 21
    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    sput-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 26
    filled-new-array {v0, v1}, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->mPath:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 9
    return-object v0
.end method
