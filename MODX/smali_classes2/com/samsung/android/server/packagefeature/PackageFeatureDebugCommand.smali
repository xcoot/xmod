.class public Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCommands:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->mCommands:[Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getCommandOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-string p1, " ["

    .line 10
    .line 11
    const-string v0, "]"

    .line 12
    .line 13
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, " options:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, " [packageName]"

    .line 11
    .line 12
    invoke-static {p1, v0, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->getCommandOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, " [packageName:packageName:...]"

    .line 20
    .line 21
    invoke-static {p1, v0, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->getCommandOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public adjustExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length p0, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p0, v1, :cond_0

    .line 5
    .line 6
    aget-object p0, p2, v0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    :cond_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-static {p3, p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return v0
.end method
