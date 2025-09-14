.class public final enum Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

.field public static final enum MEMORY:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 3
    const-string v1, "/proc/pressure/io"

    .line 5
    const-string v2, "IO"

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 13
    const-string v2, "/proc/pressure/memory"

    .line 15
    const-string v3, "MEMORY"

    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    sput-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->MEMORY:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 23
    new-instance v2, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 25
    const-string v3, "/proc/pressure/cpu"

    .line 27
    const-string v4, "CPU"

    .line 29
    const/4 v5, 0x2

    .line 30
    invoke-direct {v2, v5, v4, v3}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    filled-new-array {v0, v1, v2}, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->mPath:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->mPath:Ljava/lang/String;

    .line 3
    return-object p0
.end method
