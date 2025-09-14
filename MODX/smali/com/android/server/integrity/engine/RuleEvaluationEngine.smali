.class public final Lcom/android/server/integrity/engine/RuleEvaluationEngine;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;


# direct methods
.method public constructor <init>(Lcom/android/server/integrity/IntegrityFileManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final evaluate(Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/io/File;

    .line 8
    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 10
    const-string/jumbo v2, "rules"

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    move-result v0

    .line 20
    const-string v1, "RuleEvaluation"

    .line 22
    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/io/File;

    .line 26
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 28
    const-string/jumbo v3, "metadata"

    .line 31
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/io/File;

    .line 42
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 44
    const-string/jumbo v3, "indexing"

    .line 47
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/IntegrityFileManager;->readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    .line 59
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    const-string v0, "Error loading rules."

    .line 64
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    new-instance p0, Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const-string p0, "Integrity rule files are not available."

    .line 75
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 81
    move-result-object p0

    .line 82
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 85
    move-result-object p0

    .line 86
    new-instance v0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;

    .line 88
    invoke-direct {v0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;-><init>(Landroid/content/integrity/AppInstallMetadata;)V

    .line 91
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 94
    move-result-object p0

    .line 95
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Ljava/util/List;

    .line 105
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 108
    move-result-object p1

    .line 109
    new-instance v0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;

    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-direct {v0, v1}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;-><init>(I)V

    .line 115
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 122
    move-result-object v0

    .line 123
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Ljava/util/List;

    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 132
    move-result v0

    .line 133
    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 135
    if-nez v0, :cond_1

    .line 137
    new-instance p0, Lcom/android/server/integrity/model/IntegrityCheckResult;

    .line 139
    invoke-direct {p0, v1, p1}, Lcom/android/server/integrity/model/IntegrityCheckResult;-><init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 146
    move-result-object p0

    .line 147
    new-instance p1, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;

    .line 149
    const/4 v0, 0x1

    .line 150
    invoke-direct {p1, v0}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;-><init>(I)V

    .line 153
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 156
    move-result-object p0

    .line 157
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 160
    move-result-object p1

    .line 161
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Ljava/util/List;

    .line 167
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_2

    .line 173
    new-instance p1, Lcom/android/server/integrity/model/IntegrityCheckResult;

    .line 175
    sget-object v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->DENY:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 177
    invoke-direct {p1, v0, p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;-><init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V

    .line 180
    move-object p0, p1

    .line 181
    goto :goto_1

    .line 182
    :cond_2
    new-instance p0, Lcom/android/server/integrity/model/IntegrityCheckResult;

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 187
    move-result-object p1

    .line 188
    invoke-direct {p0, v1, p1}, Lcom/android/server/integrity/model/IntegrityCheckResult;-><init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V

    .line 191
    :goto_1
    return-object p0
.end method
