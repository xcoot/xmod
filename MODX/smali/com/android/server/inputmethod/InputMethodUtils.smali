.class public abstract Lcom/android/server/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static varargs concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    new-instance v1, Ljava/util/StringJoiner;

    .line 8
    const/16 v2, 0x3a

    .line 10
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 23
    new-instance v2, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {v2, v0}, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;)V

    .line 28
    invoke-static {p0, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->splitEnabledImeStr(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 31
    invoke-virtual {v1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 34
    :cond_0
    array-length p0, p1

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, p0, :cond_2

    .line 38
    aget-object v3, p1, v2

    .line 40
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 49
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static resolveUserId(IILjava/io/PrintWriter;)[I
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne p0, v1, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 v1, -0x2

    .line 18
    if-ne p0, v1, :cond_1

    .line 20
    move p0, p1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    if-gez p0, :cond_3

    .line 25
    if-eqz p2, :cond_2

    .line 27
    const-string v0, "Pseudo user ID "

    .line 29
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 35
    const-string p0, " is not supported."

    .line 37
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    :cond_2
    new-array p0, p1, [I

    .line 42
    return-object p0

    .line 43
    :cond_3
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 49
    :goto_0
    filled-new-array {p0}, [I

    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_4
    if-eqz p2, :cond_5

    .line 56
    const-string v0, "User #"

    .line 58
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 64
    const-string p0, " does not exit."

    .line 66
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    :cond_5
    new-array p0, p1, [I

    .line 71
    return-object p0
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x10700d4

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_8

    .line 14
    array-length v1, v0

    .line 15
    if-nez v1, :cond_0

    .line 17
    goto/16 :goto_4

    .line 19
    :cond_0
    const-class v1, Lcom/android/server/textservices/TextServicesManagerInternal;

    .line 21
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/textservices/TextServicesManagerInternal;

    .line 27
    if-eqz v1, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v1, Lcom/android/server/textservices/TextServicesManagerInternal;->NOP:Lcom/android/server/textservices/TextServicesManagerInternal$1;

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/android/server/textservices/TextServicesManagerInternal;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    .line 39
    move-result-object v1

    .line 40
    array-length v2, v0

    .line 41
    const/4 v3, 0x0

    .line 42
    move v4, v3

    .line 43
    :goto_1
    if-ge v4, v2, :cond_8

    .line 45
    aget-object v5, v0, v4

    .line 47
    move v6, v3

    .line 48
    :goto_2
    move-object v7, p1

    .line 49
    check-cast v7, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v8

    .line 55
    if-ge v6, v8, :cond_3

    .line 57
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 63
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_2

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_4

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    const-wide/32 v6, 0x8000

    .line 93
    :try_start_0
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 100
    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    if-nez v6, :cond_5

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 106
    const/4 v7, 0x1

    .line 107
    and-int/2addr v6, v7

    .line 108
    if-eqz v6, :cond_7

    .line 110
    const-string v6, " userId="

    .line 112
    const-string v8, "InputMethodUtils"

    .line 114
    :try_start_1
    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 117
    move-result v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    if-eqz v9, :cond_6

    .line 120
    if-ne v9, v7, :cond_7

    .line 122
    :cond_6
    const/4 v7, 0x4

    .line 123
    :try_start_2
    invoke-virtual {p0, v5, v7, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    goto :goto_3

    .line 127
    :catch_0
    move-exception v7

    .line 128
    const-string/jumbo v9, "setApplicationEnabledSetting failed. packageName="

    .line 131
    invoke-static {v9, v5, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    .line 138
    move-result v6

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v5

    .line 146
    invoke-static {v8, v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    goto :goto_3

    .line 150
    :catch_1
    move-exception v7

    .line 151
    const-string/jumbo v9, "getApplicationEnabledSetting failed. packageName="

    .line 154
    invoke-static {v9, v5, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    .line 161
    move-result v6

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v5

    .line 169
    invoke-static {v8, v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :catch_2
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 174
    goto/16 :goto_1

    .line 176
    :cond_8
    :goto_4
    return-void
.end method

.method public static splitEnabledImeStr(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 10
    const/16 v1, 0x3a

    .line 12
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 15
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 17
    const/16 v2, 0x3b

    .line 19
    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 22
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 31
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method
