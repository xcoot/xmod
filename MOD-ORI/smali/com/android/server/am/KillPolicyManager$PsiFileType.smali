.class public final enum Lcom/android/server/am/KillPolicyManager$PsiFileType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "/proc/pressure/io"

    .line 5
    .line 6
    const-string v3, "IO"

    .line 7
    .line 8
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "/proc/pressure/memory"

    .line 17
    .line 18
    const-string v4, "MEMORY"

    .line 19
    .line 20
    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "/proc/pressure/cpu"

    .line 29
    .line 30
    const-string v5, "CPU"

    .line 31
    .line 32
    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/server/am/KillPolicyManager$PsiFileType;->CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 36
    .line 37
    filled-new-array {v0, v1, v2}, [Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->mPath:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$PsiFileType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$PsiFileType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$PsiFileType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->mPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
