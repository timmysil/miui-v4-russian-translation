.class Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "Maps.java"


# instance fields
.field final synthetic cu:Lcom/google/common/collect/Maps$TransformedValuesMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedValuesMap;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->cu:Lcom/google/common/collect/Maps$TransformedValuesMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->cu:Lcom/google/common/collect/Maps$TransformedValuesMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 819
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 822
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 832
    :cond_0
    :goto_0
    return v0

    .line 825
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 826
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 827
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 828
    iget-object v3, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->cu:Lcom/google/common/collect/Maps$TransformedValuesMap;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/Maps$TransformedValuesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 829
    if-eqz v3, :cond_2

    .line 830
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 832
    :cond_2
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->cu:Lcom/google/common/collect/Maps$TransformedValuesMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/Maps$TransformedValuesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->cu:Lcom/google/common/collect/Maps$TransformedValuesMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 794
    new-instance v1, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet$1;-><init>(Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 836
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    check-cast p1, Ljava/util/Map$Entry;

    .line 838
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 839
    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->cu:Lcom/google/common/collect/Maps$TransformedValuesMap;

    iget-object v1, v1, Lcom/google/common/collect/Maps$TransformedValuesMap;->pb:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const/4 v0, 0x1

    .line 842
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedValuesMap$EntrySet;->cu:Lcom/google/common/collect/Maps$TransformedValuesMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$TransformedValuesMap;->size()I

    move-result v0

    return v0
.end method
