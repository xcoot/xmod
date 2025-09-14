.class public Lcom/android/server/flags/FlagsShellCommand;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/FlagOverrideStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/flags/FlagsShellCommand;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 6
    return-void
.end method

.method public static printHelp(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "Feature Flags command, allowing listing, setting, getting, and erasing of"

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    const-string/jumbo v0, "local flag overrides on a device."

    .line 9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 15
    const-string v0, "Commands:"

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  list [namespace]"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "    List all flag overrides. Namespace is optional."

    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 33
    const-string v0, "  get <namespace> <name>"

    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    const-string v0, "    Return the string value of a specific flag, or <unset>"

    .line 40
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 46
    const-string v0, "  set <namespace> <name> <value>"

    .line 48
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    const-string v0, "    Set a specific flag"

    .line 53
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 59
    const-string v0, "  erase <namespace> <name>"

    .line 61
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v0, "    Unset a specific flag"

    .line 66
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 72
    return-void
.end method

.method public static validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4

    .line 1
    array-length p0, p0

    .line 2
    const/4 v0, 0x1

    .line 3
    sub-int/2addr p0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "\" command."

    .line 7
    const-string v3, " arguments provided for \""

    .line 9
    if-ge p0, p1, :cond_0

    .line 11
    const-string p0, "Less than "

    .line 13
    invoke-static {p1, p0, v3, p3, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    return v1

    .line 21
    :cond_0
    if-le p0, p2, :cond_1

    .line 23
    const-string p0, "More than "

    .line 25
    invoke-static {p2, p0, v3, p3, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    return v1

    .line 33
    :cond_1
    return v0
.end method
