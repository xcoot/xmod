.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;IZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$1:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$2:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$3:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz v3, :cond_2

    .line 32
    .line 33
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const-string p1, "Skip changing launched state for "

    .line 48
    .line 49
    const-string v0, "SPEG"

    .line 50
    .line 51
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p0, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    const/4 p1, 0x4

    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void
.end method
