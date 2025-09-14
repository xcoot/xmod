.class public final synthetic Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/app/LocaleManager;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Landroid/content/Context;Landroid/app/LocaleManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$2:Landroid/app/LocaleManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$2:Landroid/app/LocaleManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ".apk"

    .line 38
    .line 39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    move v0, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v0, v4

    .line 55
    :goto_0
    const/16 v2, 0x2e

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-lez v5, :cond_2

    .line 62
    .line 63
    const/16 v6, 0x29

    .line 64
    .line 65
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-lez v2, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-wide/16 v5, 0x0

    .line 84
    .line 85
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v1, v2, v5, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    .line 90
    .line 91
    .line 92
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    if-ltz v1, :cond_2

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/2addr v1, v3

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, v2}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/Utils;->getLocalesListAsSet(Landroid/os/LocaleList;)Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Ljava/util/HashSet;

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_2

    .line 119
    .line 120
    move v0, v3

    .line 121
    :catch_0
    :cond_2
    xor-int/lit8 p0, v0, 0x1

    .line 122
    .line 123
    return p0
.end method
