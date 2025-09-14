.class public final Lcom/android/server/pm/ApexManager$ActiveApexInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final activeApexChanged:Z

.field public final apexDirectory:Ljava/io/File;

.field public final apexFile:Ljava/io/File;

.field public final apexModuleName:Ljava/lang/String;

.field public final isFactory:Z

.field public final preInstalledApexPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/apex/ApexInfo;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v3, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/io/File;

    .line 35
    .line 36
    iget-object v3, p1, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v3, p1, Landroid/apex/ApexInfo;->isFactory:Z

    .line 42
    .line 43
    new-instance v4, Ljava/io/File;

    .line 44
    .line 45
    iget-object v5, p1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean p1, p1, Landroid/apex/ApexInfo;->activeApexChanged:Z

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    .line 58
    .line 59
    iput-object v2, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 60
    .line 61
    iput-boolean v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->isFactory:Z

    .line 62
    .line 63
    iput-object v4, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexFile:Ljava/io/File;

    .line 64
    .line 65
    iput-boolean p1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    .line 66
    .line 67
    return-void
.end method
