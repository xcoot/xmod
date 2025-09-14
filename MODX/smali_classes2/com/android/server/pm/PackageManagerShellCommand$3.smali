.class public final Lcom/android/server/pm/PackageManagerShellCommand$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 2

    .line 1
    const-string v0, "--user"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    const-string v0, "--brief"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    const-string v0, "--components"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    const-string v0, "--query-flags"

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    .line 72
    .line 73
    return v1

    .line 74
    :cond_3
    const/4 p0, 0x0

    .line 75
    return p0
.end method
